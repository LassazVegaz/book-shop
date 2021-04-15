import * as React from "react";
import { useHistory, useParams } from "react-router";
import { Redirect } from "react-router-dom";

import Header from "./components/Header";
import LoadingScreen from "../../components/LoadingScreen";
import TableArea from "./components/TableArea";
import Connector from "../../utils/Connector";
import { Book } from "../../models";
import ErrorAlert from "../../components/ErrorAlert";

import "./Books.css";

/**
 * Main books page component
 */
const Books = () => {
    // states
    const [isLoading, setIsLoading] = React.useState(true);
    const [isLoggedIn, setIsLoggedIn] = React.useState(true);
    const [books, setBooks] = React.useState<Book[]>([]);
    const [error, setError] = React.useState("");
    const [searchedBooks, setSearchedBooks] = React.useState<Book[]>([]);

    // get history hook
    const history = useHistory();

    // get parameters from URL
    const { booksType } = useParams<{ booksType: string }>();

    // redirect to 404 when invalid url is given
    if (booksType !== "buy" && booksType !== "mylist") history.replace("/404");

    // easy trick
    const isMyBooksPage = booksType === "mylist";

    /**
     * Handle buy or remove of a book
     */
    const handleBuyOrRemoveBook = (bookID: number) => {
        // start loading
        setIsLoading(true);
        // remove or buy book
        Connector.BuyOrRemoveBook(!isMyBooksPage, bookID)
            .then(() => {
                // copy books array fro state
                const _books = books.slice();
                // index of the book to be removed
                const index = _books.findIndex((bk) => bk.id === bookID);
                // remove book
                _books.splice(index, 1);
            })
            .catch(() => setError("Check your internet connection"))
            .finally(() => setIsLoading(false));
    };

    /**
     * Handle search
     */
    const handleSearch = (searchBy: string, searchText: string) => {
        // roll back to original books if search string is empty
        if (searchText === "") {
            setSearchedBooks([]);
        }
        // search implementation
        else {
            const _books = books.filter((bk) => {
                let propertyVal = (bk as any)[searchBy.toLowerCase()] as string;
                return propertyVal
                    .toLocaleLowerCase()
                    .includes(searchText.toLocaleLowerCase());
            });
            setSearchedBooks(_books);
        }
    };

    // check if user is loagged in
    React.useEffect(() => {
        // start loading
        setIsLoading(true);

        // detects if component is unmounted
        let unmounted = false;

        // get all available books
        Connector.GetBooks(isMyBooksPage)
            .then((books) => {
                if (!unmounted) {
                    setBooks(books as Book[]);
                }
            })
            .catch((err) => {
                // exit if unmounted
                if (unmounted) return;
                else if (err.message === "401") {
                    setIsLoggedIn(false);
                } else {
                    setError("Check your internet connection");
                }
            })
            .finally(() => (!unmounted ? setIsLoading(false) : null));

        // clean up
        return () => {
            unmounted = true;
        };
    }, [isMyBooksPage]);

    return (
        <>
            <div className="books-page">
                <Header
                    myBooksLink={isMyBooksPage}
                    onLoading={(isLoading) => setIsLoading(isLoading)}
                    onError={(err) => setError(err)}
                    onSearch={handleSearch}
                />

                <TableArea
                    isMyBooksSet={isMyBooksPage}
                    books={searchedBooks.length === 0 ? books : searchedBooks}
                    onChange={handleBuyOrRemoveBook}
                />
            </div>

            <LoadingScreen show={isLoading} />

            <ErrorAlert error={error} onClose={() => setError("")} />

            {!isLoggedIn ? <Redirect to="/" /> : null}
        </>
    );
};

export default Books;

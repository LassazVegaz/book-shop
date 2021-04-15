import * as React from "react";
import { Button, Form, FormControl, Nav, Navbar } from "react-bootstrap";
import { Link, Redirect } from "react-router-dom";

import Connector from "../../../utils/Connector";

import "./Header.css";

type OnSearchCallback = (searchBy: string, searchText: string) => void;

/**
 * Search area with search box and search by options
 */
const SearchArea = (props: { onSearch: OnSearchCallback }) => {
    // states
    const [searchBy, setSearchBy] = React.useState("Title");
    const [searchText, setSearchText] = React.useState("");

    return (
        <Form inline className="search-area">
            <Form.Label>Search By</Form.Label>
            <Form.Control
                as="select"
                onChange={(e) => setSearchBy(e.target.value)}
                value={searchBy}
            >
                <option>Title</option>
                <option>Description</option>
                <option>Genre</option>
            </Form.Control>

            <FormControl
                type="text"
                placeholder="Search"
                className="mr-sm-2 search-box"
                value={searchText}
                onChange={(e) => {
                    setSearchText(e.target.value);
                    props.onSearch(searchBy, searchText);
                }}
            />

            <Button variant="outline-dark">Search</Button>
        </Form>
    );
};

/**
 * Header for Books page
 */
const Header = (props: {
    myBooksLink: boolean;
    onLoading: (isLoading: boolean) => void;
    onError: (err: string) => void;
    onSearch: OnSearchCallback;
}) => {
    // states
    const [logOut, setLogOut] = React.useState(false);

    // handle log out click
    const handleClick_logOut = (ev: React.MouseEvent) => {
        props.onLoading(true);
        // prevent link's default action
        ev.preventDefault();
        // log out
        Connector.LogOut()
            .then(() => setLogOut(true))
            .catch(() => props.onError("Check your internet connection"))
            .finally(() => props.onLoading(false));
    };

    return (
        <>
            <div className="books-header">
                <Navbar bg="primary" variant="dark" expand="lg" fixed="top">
                    <Navbar.Toggle aria-controls="navigator" />
                    <Navbar.Collapse id="navigator">
                        <Nav className="mr-auto">
                            <Nav.Link
                                as={Link}
                                to="/books/buy"
                                active={!props.myBooksLink}
                            >
                                Available Books
                            </Nav.Link>
                            <Nav.Link
                                as={Link}
                                to="/books/mylist"
                                active={props.myBooksLink}
                            >
                                My Books
                            </Nav.Link>
                            <Nav.Link onClick={handleClick_logOut}>
                                Log Out
                            </Nav.Link>
                        </Nav>

                        <SearchArea onSearch={props.onSearch} />
                    </Navbar.Collapse>
                </Navbar>
            </div>

            {logOut ? <Redirect to="/" /> : null}
        </>
    );
};

export default Header;

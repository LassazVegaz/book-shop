import React from "react";
import { Button, Table } from "react-bootstrap";
import { Book } from "../../../models";

/**
 * Row of the table
 */
const TableRow = (props: {
    isMyBook: boolean;
    book: Book;
    onChange: (bookID: number) => void;
}) => {
    // define button caption and color
    let buttonCaption = "Order";
    let buttonVariant = "outline-primary";
    if (props.isMyBook) {
        buttonCaption = "Remove";
        buttonVariant = "outline-danger";
    }

    return (
        <tr>
            <td>{props.book.id}</td>
            <td>{props.book.title}</td>
            <td>{props.book.description}</td>
            <td>{props.book.genre}</td>
            <td>{props.book.price.toFixed(2)}</td>
            <td className="button-container">
                <Button
                    variant={buttonVariant}
                    onClick={() => props.onChange(props.book.id)}
                >
                    {buttonCaption}
                </Button>
            </td>
        </tr>
    );
};

/**
 * The whole table area
 */
const TableArea = (props: {
    isMyBooksSet: boolean;
    books: Book[];
    onChange: (bookID: number) => void;
}) => {
    return (
        <div className="table-area">
            <Table striped hover>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Genre</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                    {props.books.map((book) => (
                        <TableRow
                            isMyBook={props.isMyBooksSet}
                            book={book}
                            key={book.id}
                            onChange={props.onChange}
                        />
                    ))}
                </tbody>
            </Table>
        </div>
    );
};

export default TableArea;

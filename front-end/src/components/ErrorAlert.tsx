import * as React from "react";
import { Alert } from "react-bootstrap";

/**
 * Display an error message. The error message will be gone when the error is empty
 */
const ErrorAlert = (props: { error: string; onClose: () => void }) => {
    return (
        <>
            {props.error !== "" ? (
                <Alert variant="danger" dismissible onClose={props.onClose}>
                    {props.error}
                </Alert>
            ) : null}
        </>
    );
};

export default ErrorAlert;

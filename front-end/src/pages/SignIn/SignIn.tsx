import * as React from "react";
import { Redirect } from "react-router";

import LoadingScreen from "../../components/LoadingScreen";
import ErrorAlert from "../../components/ErrorAlert";
import Connector from "../../utils/Connector";

import "./SignIn.css";

/**
 * Textbox field for sign in page
 */
const InputField = (props: {
    placeholder: string;
    type: string;
    onChange: (value: string) => void;
}) => {
    return (
        <div className="input-field">
            <input
                type={props.type}
                placeholder={props.placeholder}
                onChange={(e) => props.onChange(e.target.value)}
            />
        </div>
    );
};

/**
 * Sign in page
 */
const SignIn = () => {
    // states
    const [email, setEmail] = React.useState("");
    const [password, setPassword] = React.useState("");
    const [loading, setLoading] = React.useState(false);
    const [error, setError] = React.useState("");
    const [loggedIn, setLoggedIn] = React.useState(false);

    // Handle sign in button click
    const handleClick = async () => {
        // set loading true
        setLoading(true);

        // login
        Connector.LogIn({ email: email, password: password })
            .then((res) => {
                if (!res) {
                    setError("Invalid credentials");
                } else {
                    setLoggedIn(true);
                }
            })
            .catch(() => setError("Check your internet connection"))
            .finally(() => setLoading(false));
    };

    return (
        <>
            <div className="signin-page">
                <h1>Sign In to Continue</h1>

                <form>
                    <InputField
                        type="text"
                        placeholder="User Name"
                        onChange={(val) => setEmail(val)}
                    />
                    <InputField
                        type="password"
                        placeholder="Password"
                        onChange={(val) => setPassword(val)}
                    />

                    <button
                        onClick={handleClick}
                        disabled={loading}
                        className="signin-button"
                    >
                        Sign In
                    </button>
                </form>
            </div>

            <LoadingScreen show={loading} />

            <ErrorAlert error={error} onClose={() => setError("")} />

            {loggedIn ? <Redirect to="/books/buy" /> : null}
        </>
    );
};

export default SignIn;

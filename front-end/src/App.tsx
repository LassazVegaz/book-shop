import axios from "axios";
import React, { useEffect } from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

import Books from "./pages/Books/Books";
import PageNotFound from "./pages/PageNotFound/PageNotFound";
import SignIn from "./pages/SignIn/SignIn";

function App() {
    // set axiom defaults
    useEffect(() => {
        axios.defaults.baseURL = "http://localhost:8000/api/";
    });

    return (
        <Router>
            <Switch>
                <Route exact path="/">
                    <SignIn />
                </Route>

                <Route exact path="/books/:booksType">
                    <Books />
                </Route>

                <Route exact path="*">
                    <PageNotFound />
                </Route>
            </Switch>
        </Router>
    );
}

export default App;

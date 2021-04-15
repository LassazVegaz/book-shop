import * as React from "react";
import LoadingOverlay from "react-loading-overlay-ts";

import "./LoadingScreen.css";

/**
 * A full screen loading component
 */
const LoadingScreen = (props: { show: boolean }) => {
    return (
        <div
            className="loading-screen-container"
            style={{ display: props.show ? "block" : "none" }}
        >
            <LoadingOverlay active={props.show} spinner text="loading">
                <div className="loading-screen-content"></div>
            </LoadingOverlay>
        </div>
    );
};

export default LoadingScreen;

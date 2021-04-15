import axios, { AxiosError } from "axios";
import { Book } from "../models";

const URL_COOKIES = "http://localhost:8000/sanctum/csrf-cookie";

const URL_LOGIN = "http://localhost:8000/api/users/login";

const URL_LOGOUT = "http://localhost:8000/api/users/current/logout";

const URL_AVAILABLE_BOOKS = "http://localhost:8000/api/books/available";

const URL_MY_BOOKS = "http://localhost:8000/api/users/current/books";

const URL_BUY_BOOK = "http://localhost:8000/api/users/current/books/buy";

const URL_REMOVE_BOOK = "http://localhost:8000/api/users/current/books/remove";

/**
 * Interface for logging data
 */
interface ILoginData {
    email: string;
    password: string;
}

/**
 * A typical response from an API call
 */
export interface Response {
    success: boolean;
    message: string;
    result?: any;
}

/**
 * Books API response
 */
interface BooksResponse extends Response {
    result: {
        books: Book[];
    };
}

/**
 * Login API response
 */
interface LogInResponse extends Response {
    result: {
        token: string;
    };
}

/**
 * Connector utilities
 */
class Connector {
    /**
     * Detects if this is the first run
     */
    private static isFirstRun = true;

    /**
     * Get authorizations and set Axios defaults if this is the first run
     */
    private static initialize = async () => {
        if (Connector.isFirstRun) {
            // enable credentials in axios
            axios.defaults.withCredentials = true;
            axios.defaults.headers.common["Accept"] = "application/json";

            // get sanctum cookie
            await Connector.getAuth();

            // turn off first run
            Connector.isFirstRun = false;
        }
    };

    /**
     * Get authorization to connect with backend
     */
    private static getAuth = async () => {
        // get sanctum cookie
        await axios.get<Response>(URL_COOKIES);
    };

    /**
     * Detects if the error is AxiosError
     */
    private static isAxiosError = (x: any): x is AxiosError => {
        return typeof x.isAxiosError === "boolean";
    };

    /**
     * Handle API response errors
     */
    private static handleAPIError(error: any) {
        if (Connector.isAxiosError(error)) {
            console.log(error.response);
            if (error.response?.status === 401) throw new Error("401");
        } else {
            console.log("error is not axios");
        }
        throw error;
    }

    /**
     * Login
     */
    public static LogIn = async (loginData: ILoginData) => {
        try {
            // intialize
            await Connector.initialize();

            // login
            const response = await axios.post<LogInResponse>(
                URL_LOGIN,
                loginData
            );

            // return response success
            return response.data.success;
        } catch (error) {
            Connector.handleAPIError(error);
        }
    };

    /**
     * Logout
     */
    public static LogOut = async () => {
        try {
            // logout
            const response = await axios.post<Response>(URL_LOGOUT);

            // return response success
            return response.data.success;
        } catch (error) {
            Connector.handleAPIError(error);
        }
    };

    /**
     * Get books
     * @param myBooks If true books belong to current user will be returned
     */
    public static GetBooks = async (myBooks: boolean) => {
        try {
            // get available or bought books books
            const response = await axios.get<BooksResponse>(
                myBooks ? URL_MY_BOOKS : URL_AVAILABLE_BOOKS
            );

            // return books
            return response.data.result.books;
        } catch (error) {
            Connector.handleAPIError(error);
        }
    };

    /**
     * Buy or remove book
     */
    public static BuyOrRemoveBook = async (buy: boolean, bookID: number) => {
        try {
            // buy or remove book
            const response = await axios.post(
                buy ? URL_BUY_BOOK : URL_REMOVE_BOOK,
                { book_id: bookID }
            );

            // return response success
            return response.data.success;
        } catch (error) {
            Connector.handleAPIError(error);
        }
    };
}

export default Connector;

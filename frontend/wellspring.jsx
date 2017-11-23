import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import { login, signup, logout } from './actions/session_actions'; // its the actions that dispatch login requests

document.addEventListener("DOMContentLoaded", () => {

  // window.getState = store.getState;
  // window.dispatch = store.dispatch;
  //
  // window.login = login;
  // window.signup = signup;
  // window.logout = logout;
  let store;

  if (window.currentUser) {
    const preloadedState = { session: {currentUser: window.currentUser }};
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  const root = document.getElementById('root');

  ReactDOM.render(<Root store={store} />, root);
})

// click on the red error message in console, click on All and scroll down to find the red, or click on XHR to find the issue,
// click on action in the logger message to see the errors written out. It might be your own or the program's.

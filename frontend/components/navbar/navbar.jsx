import React from 'react';
import {Link} from 'react-router-dom';

const Navbar = ({currentUser, logout}) => {
  if (currentUser) {
    return (
      <div className="navbar">
        <ul className="navbar-ul-left">
          <li>Explore</li>
          <li>Start a project</li>
        </ul>
        <h2 className="main-title">WELLSPRING</h2>
        <ul className="navbar-ul-right">
          <li>Search<i className="fa fa-search" aria-hidden="true"></i></li>
          <li><button onClick={logout}>Sign out</button></li>
        </ul>
      </div>
    )
  } else {
    return (
      <div className="navbar">
        <ul className="navbar-ul-left">
          <li>Explore</li>
          <li>Start a project</li>
        </ul>
        <h2 className="main-title">WELLSPRING</h2>
        <ul className="navbar-ul-right">
          <li>Search<i className="fa fa-search" aria-hidden="true"></i></li>
          <li><Link to="/login" className="ul-link">Sign in</Link></li>
        </ul>
      </div>
    )
  }
}

export default Navbar;

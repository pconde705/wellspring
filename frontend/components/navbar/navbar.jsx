import React from 'react';
import {Link} from 'react-router-dom';

const Navbar = ({currentUser, logout}) => {
  if (currentUser) {
    return (
      <div className="navbar">
        <ul className="navbar-ul-left">
          <li>Explore</li>
          <li><Link className="ul-link" to="/project/new">Start a project</Link></li>
        </ul>
        <h2><Link className="main-title" to="/">WELLSPRING</Link></h2>
        <ul className="navbar-ul-right">
          <li>Search<i className="fa fa-search" aria-hidden="true"></i></li>
          <li><Link to="/" className="ul-link" onClick={logout}>Sign out ({currentUser.username})</Link></li>
        </ul>
      </div>
    )
  } else {
    return (
      <div className="navbar">
        <ul className="navbar-ul-left">
          <li>Explore</li>
          <li><Link className="ul-link" to="/project/new">Start a project</Link></li>
        </ul>
        <h2><Link className="main-title" to="/">WELLSPRING</Link></h2>
        <ul className="navbar-ul-right">
          <li>Search<i className="fa fa-search" aria-hidden="true"></i></li>
          <li><Link to="/login" className="ul-link">Sign in</Link></li>
        </ul>
      </div>
    )
  }
}

export default Navbar;

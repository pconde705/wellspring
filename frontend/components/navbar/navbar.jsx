import React from 'react';
import {Link} from 'react-router-dom';
import SearchContainer from '../search/search_container';

const Navbar = ({currentUser, logout}) => {
  if (currentUser) {
    return (
      <div className="navbar">
        <ul className="navbar-ul-left">
          <li><SearchContainer /></li>
          <li><Link className="ul-link" to="/projects">All Projects</Link></li>
        </ul>
        <h2><Link className="main-title" to="/">WELLSPRING</Link></h2>
        <ul className="navbar-ul-right">
          <li><Link className="ul-link" to="/project/new">Start a project</Link></li>
          <li><Link to="/" className="ul-link" onClick={logout}>Sign out ({currentUser.username})</Link></li>
        </ul>
      </div>
    )
  } else {
    return (
      <div className="navbar">
        <ul className="navbar-ul-left">
          <li><SearchContainer /></li>
          <li><Link className="ul-link" to="/projects">All Projects</Link></li>
        </ul>
        <h2><Link className="main-title" to="/">WELLSPRING</Link></h2>
        <ul className="navbar-ul-right">
          <li><Link className="ul-link" to="/project/new">Start a project</Link></li>
          <li><Link to="/login" className="ul-link">Sign in</Link></li>
        </ul>
      </div>
    )
  }
}

export default Navbar;

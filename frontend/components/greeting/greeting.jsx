import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({currentUser, logout}) => { // curly braces allow if/else statements, normal parenthases do not
  if (currentUser) { // in const Greetin if you had it like ({ currentUser }), then you don't have to write this.props...
    return (
      <div>
        <h2>Welcome {currentUser.username}</h2>
        <button onClick={logout}>Log out</button>
      </div>
    )
  } else {
    return (
      <div>
        <Link to='/signup'>Sign up</Link>
        <br /><br />
        <Link to='/login'>Log in</Link>
      </div>
    )
  }
}

export default Greeting;

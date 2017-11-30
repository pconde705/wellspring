import React from 'react';
import {Link} from 'react-router-dom';

class Footer extends React.Component {

  render () {

    return (
      <div className="footer-div">
        <div className="footer-inside">
          <p>WellSpring, a Kickstarter Clone</p>
          <ul>
            <li>
              <a className="footer-link" href="https://github.com/pconde705"><i className="fa fa-github" aria-hidden="true"></i></a>
            </li>
            <li>
              <a className="footer-link" href="https://www.linkedin.com/in/patrick-conde-69815b68/"><i className="fa fa-linkedin-square" aria-hidden="true"></i></a>
            </li>
          </ul>
        </div>
      </div>
    )
  }
}

export default Footer;

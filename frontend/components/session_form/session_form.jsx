import React from 'react';
import {Link, withRouter} from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {email: "", password: ""}
    this.handleSubmit = this.handleSubmit.bind(this);
    // this.renderErrors = this.renderErrors.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state); //this merges this.state with an empty object
    this.props.processForm(user);
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error) => (
          <li>
            {error}
          </li>
        ))}
      </ul>
    )
  }

  render() {
    if (this.props.formType === 'login') {
    return (
          <div>
            <form>
              <Link to='/signup'>Sign up</Link>
              <label>
                Email:
                <input type="text"></input>
              </label>
              <br />
              <label>
                Password:
                <input type= "password"></input>
              </label>
              <br />
              <button onClick={this.handleSubmit}>Log in</button>
            </form>
            {this.renderErrors()}
          </div>
        )
        } else {
        return (
          <div>
            <form>
              <Link to='/login'>Log in</Link>
              <label>
                Name:
                <input type="text"></input>
              </label>
              <label>
                Email:
                <input type="text"></input>
              </label>
              <br />
              <label>
                Password:
                <input type= "password"></input>
              </label>
              <br />
              <button onClick={this.handleSubmit}>Sign up</button>
            </form>
            {this.renderErrors()}
          </div>
        )
        }
  }

}

export default withRouter(SessionForm);

import React from 'react';
import {Link, withRouter} from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {email: "", password: ""}
    this.handleSubmit = this.handleSubmit.bind(this);
    // this.renderErrors = this.renderErrors.bind(this);
  }

  handleInput(type) {
    return(e) => {
      this.setState({ [type]: e.target.value });
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state); //this merges this.state with an empty object
    this.props.processForm(user);
  }

  renderErrors() {
    return (
      <div className="error-messages">
        <ul>
          {this.props.errors.map((error) => (
            <li>
              {error}
            </li>
          ))}
        </ul>
      </div>
    )
  }

  render() {
    if (this.props.formType === 'login') {
    return (
          <div className="login-div">
            <form className="login-form">
              <h2 className="login-form-title">Log in</h2>
              <label>
                <input className="input-fields" type="text" onChange={this.handleInput('email')} placeholder="Email"></input>
              </label>
              <br />
              <label>
                <input className="input-fields" type="password" onChange={this.handleInput('password')} placeholder="Password"></input>
              </label>
              <br />
              <button className="login-button" onClick={this.handleSubmit}>Log me in!</button>
              <br />
              {this.renderErrors()}
              <div className="bottom-div">
                New to WellSpring? <Link to='/signup'>Sign up!</Link>
              </div>
            </form>
          </div>
        )
        } else {
        return (
          <div className="login-div">
            <form className="login-form">
              <div className="top-div">
                Have an account? <Link to='/login'>Log in</Link>
              </div>
                <h2 className="login-form-title">Sign up</h2>
              <label>
                <input className="input-fields" type="text" onChange={this.handleInput('username')} placeholder="Name"></input>
              </label>
              <br />
              <label>
                <input className="input-fields" type="text" onChange={this.handleInput('email')} placeholder="Email"></input>
              </label>
              <br />
              <label>
                <input className="input-fields" type="password" onChange={this.handleInput('password')} placeholder="Password"></input>
              </label>
              <br />
                <button className="login-button" onClick={this.handleSubmit}>Create Account</button>
                {this.renderErrors()}
            </form>
          </div>
        )
        }
  }

}

export default withRouter(SessionForm);

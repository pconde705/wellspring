import React from 'react';

class ProjectForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {title: ""}
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleInput(type) {
    return (e) => {
      this.setState({ [type]: e.target.value })
    }

  }

  handleSubmit(e) {
    e.preventDefault();
  }

  render() {
    return (
      <div>
        <form>
          <input type="text" placeholder="Title" onChange={this.handleInput('title')} ></input>
          <button onClick={this.handleSubmit}>Create Project</button>
        </form>
      </div>
    )
  }
}

export default ProjectForm;

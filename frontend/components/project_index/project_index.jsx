import React from 'react';
import {Link} from 'react-router-dom'
// You can make all of your componenets extends React.Component
// If you use any of the lifecycle methods tou must extends React.Component
// you would never const extends React.Component, only class extends React.Component
// the constructor will not mess up anything, you can add it there when in doubt

class ProjectIndex extends React.Component {
  constructor(props) {
    super(props)
    // console.log(props); // this console.log is run before componentDidMount so projects will be empty
    this.state = {projects: []}
    // this.renderProjects = this.renderProjects.bind(this);
  }

  componentDidMount(){ // this function is needed or else this.props.projects will render a blank array/object
    this.props.fetchAllProjects(); //this comes from the dispatch action
  }

  renderProjects(e) {
    e.preventDefault();
    console.log("Hello");
    return (
      <div>
        <p>Hello</p>
        <ul>
          {
            this.props.projects.map((project, key) => (
              <li key={key}><h2>{project.title}</h2></li>
            ))
          }
        </ul>
      </div>
    )
  }
 // Router
  render() {
    return (
      <div>
        <div className="category-bar-div">
          <ul>
            <li><button onClick={this.renderProjects}>Music</button></li>
            <li><Link to="/">Comics & Illustration</Link></li>
            <li><Link to="/">Film</Link></li>
            <li><Link to="/">Food & Craft</Link></li>
            <li><Link to="/">Games</Link></li>
            <li><Link to="/">Design & Tech</Link></li>
            <li><Link to="/">Publishing</Link></li>
            <li><Link to="/">Arts</Link></li>
          </ul>
        </div>
      </div>
    )
  }
}

export default ProjectIndex;

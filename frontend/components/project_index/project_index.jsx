import React from 'react';

// You can make all of your componenets extends React.Component
// If you use any of the lifecycle methods tou must extends React.Component
// you would never const extends React.Component, only class extends React.Component
// the constructor will not mess up anything, you can add it there when in doubt

class ProjectIndex extends React.Component {
  constructor(props) {
    super(props)
    // console.log(props); // this console.log is run before componentDidMount so projects will be empty
  }

  componentDidMount(){ // this function is needed or else this.props.projects will render a blank array/object
    this.props.fetchAllProjects(); //this comes from the dispatch action
  }

  render() {
    return (
      <div>
        <ul>
        {
          this.props.projects.map((project, key) => (
            <li key={key}><h2>{project.title}</h2>
            <img src={project.main_image_url}/></li>
          ))
        }
        </ul>
      </div>
    )
  }
}

export default ProjectIndex;

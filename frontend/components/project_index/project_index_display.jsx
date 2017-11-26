import React from 'react';


class ProjectIndexDisplay extends React.Component {

  render() {
    let filteredProjects = [];
    this.props.allProps.map((project) => {
      if (project.category === this.props.allData.category) {
        filteredProjects.push(project)
      }
    })
    return (
      <div>
        {filteredProjects.map((project, key) => (
          <h1 key={key}>
            {project.title}
          </h1>
        ))}
      </div>
    )
  }
}

export default ProjectIndexDisplay;

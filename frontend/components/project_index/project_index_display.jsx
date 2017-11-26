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
      <div className="all-projects-div">
        {filteredProjects.map((project, key) => (
          <ul>
            <li>
              <div className="featured-project-div" key={key}>
                <img src={project.main_image_url} />
                <h1>{project.title}</h1>
              </div>
            </li>
          </ul>
        ))}
      </div>
    )
  }
}

export default ProjectIndexDisplay;

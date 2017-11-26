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
          <div className="featured-project-div" key={key}>
            <img src={project.main_image_url} />
            <div className="featured-names">
              <h1 className="featured-title">{project.title}</h1>
              <p className="featured-by">BY {project.user}</p>
              <p className="featured-percent">{(100 / project.goal) * project.money_raised}% FUNDED</p>
            </div>
          </div>
        ))}
      </div>
    )
  }
}

export default ProjectIndexDisplay;

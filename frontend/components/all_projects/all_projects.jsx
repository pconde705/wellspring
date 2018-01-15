import React from 'react';
import {Link} from 'react-router-dom';


class AllProjects extends React.Component {

  constructor(props) {
    super(props)

  }

  componentDidMount() {
    this.props.fetchAllProjects();
  }

  render () {
    return (
      <div className="all-projects-div all-projects-show">
        {this.props.projects.map((project, key) => (
          <Link key={key} className="featured-link" to={`/projects/${project.id}`}>
            <div className="featured-project-div">
              <img src={project.main_image_url} />
              <div className="featured-names">
                <h1 className="featured-title">{project.title}</h1>
                <p className="featured-by">BY {project.user}</p>
                <p className="featured-percent">{Math.round(10 * ((100 / project.goal) * project.money_raised)) / 10}% FUNDED</p>
              </div>
            </div>
          </Link>
        ))}
      </div>
    )
  }
}

export default AllProjects;

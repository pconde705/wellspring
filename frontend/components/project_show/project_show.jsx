import React from 'react';

class ProjectShow extends React.Component {

  componentDidMount() {
    this.props.fetchSingleProject(this.props.match.params.id)
  }

  render () {
    // console.log(this.props.project.undefined);
    if (this.props.project.undefined === undefined) {
      return ("")
    } else {
      return (
        <div className="show-overall-div">
          <div className="show-top-half">
            <div className="show-icon-and-title">
            <div className="show-creator-icon">
              <p>Created By {this.props.project.undefined.projects.user}</p>
            </div>
            <div className="show-title">
              <h1>
                {this.props.project.undefined.projects.title}
              </h1>
            </div>
          </div>
            <div className="show-img-and-goals">
              <img src={this.props.project.undefined.projects.main_image_url} />
              <div className="show-goals-only">
                <div className="show-goals-numbers-only">

                </div>
                <button></button>
                <p>All or nothing.</p>
              </div>
            </div>
          </div>
          <div className="show-bottom-half">
            <div className="show-description">
              <img src={this.props.project.undefined.projects.extra_image_url} />
            </div>
            <div className="show-backer-rewards">
              <ul>
                <li>
                  <div className="show-reward">

                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      )

    }
  }
}

export default ProjectShow;

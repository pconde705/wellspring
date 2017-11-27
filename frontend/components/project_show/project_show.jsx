import React from 'react';

class ProjectShow extends React.Component {

  componentDidMount() {
    this.props.fetchSingleProject(this.props.match.params.id)
  }
  //
  // componentWillReceiveProps(nextProps) {
  //   if (this.props.match.params.id !== nextProps.match.params.id) {
  //     this.props.fetchSingleProject(nextProps.match.params.id)
  //   }
  // }

  render () {
    // console.log(this.props.project.undefined);
    if (this.props.project.undefined === undefined) {
      return ("")
    } else {
      return (
        <div className="show-overall-div">
          <div className="show-top-half">
            <div className="show-creator-icon">

            </div>
            <div className="show-title">
              <h1>
                {this.props.project.undefined.projects.title}
              </h1>
            </div>
            <div className="show-img-and-goals">
              <img src={} />
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

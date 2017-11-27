import React from 'react';

class ProjectShow extends React.Component {
  constructor(props) {
    super(props)

    this.setLine = this.setLine.bind(this)
  }

  componentDidMount() {
    this.props.fetchSingleProject(this.props.match.params.id)
  }

  setLine() {
    let bar_width = (100 / this.props.project.undefined.projects.goal) * this.props.project.undefined.projects.money_raised
    if (bar_width > 100) {
      return {width: "100px"}
    } else {
      return {width: `${bar_width}%`}
    }
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
                  <div className="show-lines">
                    <div className="show-completion-line" style={this.setLine()}></div>
                    <div className="show-grey-line"></div>
                  </div>
                  <h2>${this.props.project.undefined.projects.money_raised}</h2>
                  <p>pledged of ${this.props.project.undefined.projects.goal} goal</p>
                  <h2>{this.props.project.undefined.projects.backers}</h2>
                  <p>backers</p>
                  <h2>29</h2>
                  <p>days to go</p>
                </div>
                <button className="show-backer-button">Back this project</button>
              </div>
            </div>
          </div>
          <div className="show-bottom-half">
            <div className="show-description">
              <p>{this.props.project.undefined.projects.description}</p>
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

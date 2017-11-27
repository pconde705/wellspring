import React from 'react';

class ProjectShow extends React.Component {
  constructor(props) {
    super(props)

    this.setLine = this.setLine.bind(this)
    this.greyLine = this.greyLine.bind(this)
  }

  componentDidMount() {
    this.props.fetchSingleProject(this.props.match.params.id)
  }

  setLine() {
    let bar_width = (100 / this.props.project.undefined.projects.goal) * this.props.project.undefined.projects.money_raised
    if (bar_width > 100) {
      return {width: "100%"}
    } else {
      return {width: `${bar_width}%`}
    }
  }

  greyLine() {
    let bar_width = (100 / this.props.project.undefined.projects.goal) * this.props.project.undefined.projects.money_raised
    if (bar_width > 100) {
      return {width: "0px"}
    } else {
      const greyWidth = 100 - bar_width
      return {width: `${greyWidth}%`}
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
                    <div className="show-grey-line" style={this.greyLine()}></div>
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
            <h2>About</h2>
            <div className="show-description">
              <p>{this.props.project.undefined.projects.description}</p>
              <img src={this.props.project.undefined.projects.extra_image_url} />
            </div>
            <div className="show-backer-rewards">
              <ul>
                <li>
                  <h2>Support</h2>
                </li>
                <li>
                  <div className="show-reward">
                    <p>Pledge $1 or more</p>
                    <p>Just want to help out</p>
                    <p>Not interested in any reward but want to help out. Any amount, small or large, helps us reach our long-term goals.</p>
                    <p>Includes:</p>
                    <ul>
                      <li>Thank you!</li>
                    </ul>
                    <p>Estimated Delivery</p>
                    <p>December 2018</p>
                    <p>0 backers</p>
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

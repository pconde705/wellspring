import React from 'react';
import {Link} from 'react-router-dom';


class ProjectShow extends React.Component {
  constructor(props) {
    super(props)

    this.setLine = this.setLine.bind(this);
    this.greyLine = this.greyLine.bind(this);
    this.clickReward = this.clickReward.bind(this);

  }

  componentDidMount() {
    this.props.fetchSingleProject(this.props.match.params.id)
  }

  setLine() {
    let bar_width = (100 / this.props.project.goal) * this.props.project.money_raised
    if (bar_width > 100) {
      return {width: "100%"}
    } else {
      return {width: `${bar_width}%`}
    }
  }

  greyLine() {
    let bar_width = (100 / this.props.project.goal) * this.props.project.money_raised
    if (bar_width > 100) {
      return {width: "0px"}
    } else {
      const greyWidth = 100 - bar_width
      return {width: `${greyWidth}%`}
    }
  }
  //
  // propsToPassOn() {
  //   return this.props.project
  // }

  clickReward(reward) {
    console.log(this.props.project);
    console.log(reward);
    // return (
    //   this.setState(this.props.project.backers: 1)
    // )
    // dispatch to the database, update event, patch request, db sends up the edited event,
    // the edited event will be received by the store, and be returned, when the reducer receives the action all th ec omponents will automatically
    // re-render.
    // look in to custom routes,
    // You need a redux cycle
  }

  render () {
    // console.log(this.state);
    const {project} = this.props;
    if (project === undefined || project.rewards === undefined) {
      return ("")
    } else {
      return (
        <div className="show-overall-div">
          <div className="show-top-half">
            <div className="show-icon-and-title">
            <div className="show-creator-icon">
              <p>Created By {project.user}</p>
            </div>
            <div className="show-title">
              <h1>
                {project.title}
              </h1>
            </div>
          </div>
            <div className="show-img-and-goals">
              <img src={project.main_image_url} />
              <div className="show-goals-only">
                <div className="show-goals-numbers-only">
                  <div className="show-lines">
                    <div className="show-completion-line" style={this.setLine()}></div>
                    <div className="show-grey-line" style={this.greyLine()}></div>
                  </div>
                  <h2>${project.money_raised}</h2>
                  <p>pledged of ${project.goal} goal</p>
                  <h2>{project.backers}</h2>
                  <p>backers</p>
                  <h2>29</h2>
                  <p>days to go</p>
                </div>
                <button className="show-backer-button">Back this project</button>
              </div>
            </div>
          </div>
          <br /><br />
          <div className="show-bottom-half">
            <div className="show-description">
              <h2>About</h2>
              <p>{project.description}</p>
              <img src={project.extra_image_url} />
            </div>
            <div className="show-backer-rewards">
              <ul>
                <li>
                  <h2>Support</h2>
                  {project.creator_id === this.props.currentUser.id ?
                    <Link className="add-reward-link" to={`/projects/${project.id}/rewards`}>
                      <div className="show-reward">Add a reward</div>
                    </Link>
                  : ""}
                </li>
                <li>
                  {project.rewards.map((reward, key) => (
                    <div key={key} className="show-reward" onClick={() => this.clickReward(reward)}>
                      <p className="show-reward-title">Pledge ${reward.amount} or more</p>
                      <p className="show-reward-subtitle">{reward.reward_subtitle}</p>
                      <p className="show-reward-description">{reward.reward_description}</p>
                      <p className="show-reward-p">INCLUDES:</p>
                      <ul>
                        <li>{reward.includes}</li>
                      </ul>
                      <p className="show-reward-p">ESTIMATED DELIVERY</p>
                      <p className="show-reward-date">{reward.reward_date}</p>
                      <p className="show-reward-backers">{reward.reward_backers} backers</p>
                    </div>
                  ))}
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

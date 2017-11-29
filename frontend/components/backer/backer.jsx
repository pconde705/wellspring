import React from 'react';


class Backer extends React.Component {
  constructor(props) {
    super(props)

    this.clickReward = this.clickReward.bind(this);
    this.clickProject = this.clickProject.bind(this);
    this.state = {project_id: null, reward_id: null, cash_only: 0}

  }

  clickProject() {
    // console.log(this.props.project);
    const pro_id = this.props.project.id
    this.setState({project_id: pro_id, reward_id: null})
    const newState = Object.assign({}, this.state)
    this.props.createProjectBackers(this.props.project)
  }

  clickReward() {
    // this.props.reward.reward_backers += 1
    //
    // this.props.editProjectRewards(this.props.project.id, this.props.reward)

    // It now works, but you must be logged in, hence the require_logged_in in the controller

    // dispatch to the database, update event, patch request, db sends up the edited event,
    // the edited event will be received by the store, and be returned, when the reducer receives the action all th ec omponents will automatically
    // re-render.
    // look in to custom routes,
    // You need a redux cycle
  }


  render () {
    console.log(this.props);
    const {reward} = this.props
    return (
      <span onClick={() => this.clickReward()}>
      <div className="show-reward" onClick={() => this.clickProject()}>
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
    </span>
    )
  }
}

export default Backer;

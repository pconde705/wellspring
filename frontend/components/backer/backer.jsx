import React from 'react';


class Backer extends React.Component {
  constructor(props) {
    super(props)

    this.clickReward = this.clickReward.bind(this);
    this.clickProject = this.clickProject.bind(this);

  }

  clickProject() {
    console.log(this.props.project);
    this.props.project.money_raised += this.props.reward.amount
    this.props.project.backers += 1

    this.props.editProjectBackers(this.props.project)
  }

  clickReward() {
    this.props.reward.reward_backers += 1

    this.props.editProjectRewards(this.props.project.id, this.props.reward)

    // It now works, but you must be logged in, hence the require_logged_in in the controller

    // dispatch to the database, update event, patch request, db sends up the edited event,
    // the edited event will be received by the store, and be returned, when the reducer receives the action all th ec omponents will automatically
    // re-render.
    // look in to custom routes,
    // You need a redux cycle
  }


  render () {
    var divStyle = {
      background: "blue",
    };
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

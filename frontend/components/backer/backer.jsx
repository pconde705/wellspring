import React from 'react';


class Backer extends React.Component {
  constructor(props) {
    super(props)

    this.clickReward = this.clickReward.bind(this);

    this.state = this.props.project
  }

  clickReward(reward) {
    console.log(this.props.project);
    console.log(reward);

    // this.props.editProjectBackers(this.props.project)
    
    // dispatch to the database, update event, patch request, db sends up the edited event,
    // the edited event will be received by the store, and be returned, when the reducer receives the action all th ec omponents will automatically
    // re-render.
    // look in to custom routes,
    // You need a redux cycle
  }


  render () {
    const {reward} = this.props
    return (
      <div className="show-reward" onClick={() => this.clickReward(reward)}>
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
    )
  }
}

export default Backer;

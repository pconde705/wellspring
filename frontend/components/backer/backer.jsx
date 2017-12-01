import React from 'react';


class Backer extends React.Component {
  constructor(props) {
    super(props)

    this.clickReward = this.clickReward.bind(this);
    this.clickProject = this.clickProject.bind(this);
    this.state = {project_id: null, reward_id: null, cash_only: 0}

  }

  clickProject() {
    const pro_id = this.props.project.id
    const rew_id = this.props.reward.id
    this.setState({project_id: pro_id, reward_id: rew_id}, () => (

      this.props.createProjectBackers(this.state)
    ))
  }

  clickReward() {
    const pro_id = this.props.project.id
    const rew_id = this.props.reward.id
    this.setState({project_id: pro_id, reward_id: rew_id}, () => (

      this.props.createRewardBackers(this.state)
    ))
  }


  render () {
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

import React from 'react'

class Reward extends React.Component {
  constructor(props){
    super(props)

    this.state = {amount: 0, reward_subtitle: "", reward_description: "", includes: "", reward_backers: 0, reward_date: "Dec 2018"}
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const reward = Object.assign({}, this.state)
    this.props.createReward(this.props.project_id, reward).then(
      this.setState({
        amount: 0, reward_subtitle: "", reward_description: "", includes: "", reward_backers: 0, reward_date: "Dec 2018"
      })
    );
  }

  handleInput(type) {
    return(e) => {
      this.setState({[type]: e.target.value})
    }
  }


  render () {
    console.log(this.props);
    return (
      <form className="reward-create-form">
        <h1 className="reward-form-header">Create Rewards</h1>
        <ol className="custom-ol">
          <li>
            <h3>Reward Amount:</h3>
            $<input className="form-input-field" type="number" placeholder="1"
            onChange={this.handleInput("amount")}></input>
          </li>
          <li>
            <h3>Title:</h3>
            <input className="form-input-field" type="text" placeholder="Title"
            onChange={this.handleInput("reward_subtitle")}></input>
          </li>
          <li>
            <h3>Short Description:</h3>
            <input className="form-input-field" type="text" placeholder="..."
              onChange={this.handleInput("reward_description")}></input>
          </li>
          <li>
            <h3>What does this reward include?</h3>
            <input className="form-input-field" type="string" placeholder="e.g. T-Shirt, Eternal Gratitude, etc..."
              onChange={this.handleInput("includes")}></input>
          </li>
          <li>
            <h3>When can this reward be delivered?</h3>
            <input className="form-input-field" type="date"
              onChange={this.handleInput("reward_date")}></input>
          </li>
        </ol>
        <button className="reward-button" onClick={this.handleSubmit}>Create Reward</button>
      </form>
    )
  }
}

export default Reward;

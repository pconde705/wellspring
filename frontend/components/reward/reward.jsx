import React from 'react'

class Reward extends React.Component {
  constructor(props){
    super(props)

    this.state = {amount: 0, reward_subtitle: "", reward_description: "", includes: "", reward_backers: 0}
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit() {

  }

  handleInput(type) {
    return(e) => {
      this.setState({[type]: e.target.value})
    }
  }


  render () {
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
            <input className="form-input-field" type="text" placeholder="..."></input>
          </li>
          <li>
            <h3>What does this reward include?</h3>
            <input className="form-input-field" type="string" placeholder="e.g. T-Shirt, Eternal Gratitude, etc..."></input>
          </li>
          <li>
            <h3>When can this reward be delivered?</h3>
            <input className="form-input-field" type="date"></input>
          </li>
        </ol>
        <button className="reward-buttton" onClick={this.handleSubmit}>Create Reward</button>
      </form>
    )
  }
}

export default Reward;

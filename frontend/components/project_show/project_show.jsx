import React from 'react';
import {Link} from 'react-router-dom';
import BackerContainer from '../backer/backer_container';
//  Where you want to render your JSX file you must render the container!!!!!
// Hence we import the backer container!!!

class ProjectShow extends React.Component {
  constructor(props) {
    super(props)

    this.setLine = this.setLine.bind(this);
    this.greyLine = this.greyLine.bind(this);
    this.state = {project_id: null, reward_id: null, cash_only: 0}
    this.handleSubmit = this.handleSubmit.bind(this)

  }

  componentDidMount() {
    this.props.fetchSingleProject(this.props.match.params.id);
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

  addMoney(type) {
    return (e) => {
      this.setState({ [type]: e.target.value })
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const pro_id = this.props.project.id
    this.setState({project_id: pro_id, reward_id: null})
    const newState = Object.assign({}, this.state)
    this.props.createProjectBackers(newState)
  }

  render () {
    // console.log(this.props);
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
                <form className="show-add-money">
                  <input className="show-add-money-input" onChange={this.addMoney('cash_only')} type="number" placeholder="Enter amount you wish to donate"></input>
                  <button onClick={this.handleSubmit} className="show-backer-button">Back this project</button>
                </form>
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
                    {(this.props.currentUser) && project.creator_id === this.props.currentUser.id ?
                      <Link className="add-reward-link" to={`/projects/${project.id}/rewards`}>
                        <div className="show-reward">Add a reward</div>
                      </Link>
                    : ""}
                </li>
                <li>
                  {project.rewards.sort((a, b) => a.amount > b.amount).map((reward, key) => (
                    <BackerContainer key={key} reward={reward} project={project} />
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

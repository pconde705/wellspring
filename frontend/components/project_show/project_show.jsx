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


  render () {
    console.log(this.props);
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

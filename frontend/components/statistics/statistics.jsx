import React from 'react';

class Statistics extends React.Component {

  componentDidMount(){
    this.props.fetchAllProjectsCount();
    this.props.fetchAllFundedProjects();
    this.props.fetchAllBackers();
  }

  render(){
    let monthNames = ["January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"];
    let today = new Date();
    let day = today.getDate();
    let month = today.getMonth(); // January is 0
    let year = today.getFullYear();
    today = monthNames[month] + ' ' + day + ', ' + year;

    return(
      <div className="stats-header">
        <div>
          <p className="top-text">{today}</p>
          <p className="bottom-text">Bringing creative projects to life.</p>
        </div>
        <div>
          <p className="top-text">TOTAL BACKERS</p>
          <p className="bottom-text">{this.props.backers}</p>
        </div>
        <div>
          <p className="top-text">FUNDED PROJECTS</p>
          <p className="bottom-text">{this.props.funded}</p>
        </div>
        <div>
          <p className="top-text">LIVE PROJECTS</p>
          <p className="bottom-text">{this.props.projects}</p>
        </div>
      </div>
    )
  }

}

export default Statistics;

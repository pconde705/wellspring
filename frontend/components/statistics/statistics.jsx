import React from 'react';

const Statistics = () => {
  var monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"];
  var today = new Date();
  var day = today.getDate();
  var month = today.getMonth(); // January is 0
  var year = today.getFullYear();
  today = monthNames[month] + ' ' + day + ', ' + year;
  return (
    <div className="stats-header">
      <div>
        <p className="top-text">{today}</p>
        <p className="bottom-text">Bringing creative projects to life.</p>
      </div>
      <div>
        <p className="top-text">TOTAL BACKERS</p>
        <p className="bottom-text">13,917,791</p>
      </div>
      <div>
        <p className="top-text">FUNDED PROJECTS</p>
        <p className="bottom-text">135,116</p>
      </div>
      <div>
        <p className="top-text">LIVE PROJECTS</p>
        <p className="bottom-text">4,869</p>
      </div>
    </div>
  )
}

export default Statistics;

import React from 'react';
import {Link} from 'react-router-dom';
import ProjectIndexDisplay from './project_index_display';
// You can make all of your componenets extends React.Component
// If you use any of the lifecycle methods tou must extends React.Component
// you would never const extends React.Component, only class extends React.Component
// the constructor will not mess up anything, you can add it there when in doubt

class ProjectIndex extends React.Component {
  constructor(props) {
    super(props)
    this.state = {category: "music", clicked: false}
    this.renderProjects = this.renderProjects.bind(this);
  }

  componentDidMount(){ // this function is needed or else this.props.projects will render a blank array/object
    this.props.fetchAllProjects(); //this comes from the dispatch action
  }

  renderProjects(type) {
    this.setState({ category: type })
    // this should return a function, in this return you do the filtering
    this.setState({ clicked: true })
  }

  allData() {
    return this.state
  }

  allProps(){
    return this.props.projects
  }

 // Router
  render() {
    return (
      <div className="overall-index">
        <div className="category-bar-div">
          <ul>
            <li><button onClick={() => this.renderProjects('music')}>Music</button></li>
            <li><button onClick={() => this.renderProjects('comics')}>Comics & Illustration</button></li>
            <li><button onClick={() => this.renderProjects('film')}>Film</button></li>
            <li><button onClick={() => this.renderProjects('food')}>Food & Craft</button></li>
            <li><button onClick={() => this.renderProjects('photography')}>Photography</button></li>
            <li><button onClick={() => this.renderProjects('games')}>Games</button></li>
            <li><button onClick={() => this.renderProjects('technology')}>Design & Tech</button></li>
            <li><button onClick={() => this.renderProjects('publishing')}>Publishing</button></li>
            <li><button onClick={() => this.renderProjects('arts')}>Arts</button></li>
          </ul>
        </div>
         <ProjectIndexDisplay allData={this.allData()} allProps={this.allProps()} />
      </div>
    )
  }
}

export default ProjectIndex;

// In the buttons above, if you dont pass in a function, the onClick action will execute immediately regards of click or not.


// The below was written in case of a click action, but is now pointless because we default our category to "music"
// {this.state.clicked ? <ProjectIndexDisplay allData={this.allData()} allProps={this.allProps()} /> : <ProjectIndexDisplay allData={this.allData()} allProps={this.allProps()} />}

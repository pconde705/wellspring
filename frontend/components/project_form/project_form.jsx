import React from 'react';
import ProjectFormImage from './project_form_image';
import RewardContainer from '../reward/reward_container';

class ProjectForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {title: "", category: "arts", description: "", goal: 1, main_image_url: "", extra_image_url: "", money_raised: 0, backers: 0}
    this.handleSubmit = this.handleSubmit.bind(this)
    this.setImageUrl = this.setImageUrl.bind(this)
    // this.setExtraImageUrl = this.setExtraImageUrl.bind(this)
  }

  handleInput(type) {
    return (e) => {
      this.setState({ [type]: e.target.value })
    }
  }

  setImageUrl(imgType) {
    return (url) => {
      this.setState({ [imgType]: url }) // square brackets trigger an evaluation, not some array declaration
      // in the render these will come down as props to ProjectForm
    }
  }

  // setExtraImageUrl(url) {
  //   this.setState({ extra_image_url: url })
  // }

  handleSubmit(e) {
    e.preventDefault();
    const project = Object.assign({}, this.state)
    this.props.createProject(project)
      .then( ({payload}) =>
      this.props.history.push(`/projects/${payload.projects.id}`)
    );
  }

  renderErrors() {
    return (
      <div className="error-messages">
        <ul>
          {this.props.errors.map((error) => (
            <li>
              {error}
            </li>
          ))}
        </ul>
      </div>
    )
  }

  componentWillMount() { // didMount is more gernerally used for ajax requests, which clearErrors does not.
    this.props.clearErrors();
  }


  render() {
    return (
      <div className="project-create-div">
        <img className="background-form-image" src="https://res.cloudinary.com/lopopoa2/image/upload/v1511547135/pexels-photo-209678_uxitpp.jpg" ></img>
        <form className="project-create-form">
          <h1 className="project-form-header">Get Started</h1>
          <ol className="custom-ol">
            <li>
              <h3>Choose a category:</h3>
                <select className="project-dropdown" value={this.state.category} onChange={this.handleInput('category')}>
                  <option value="arts">Arts</option>
                  <option value="comics">Comics</option>
                  <option value="film">Film & Video</option>
                  <option value="food">Food</option>
                  <option value="games">Games</option>
                  <option value="music">Music</option>
                  <option value="photography">Photography</option>
                  <option value="publishing">Publishing</option>
                  <option value="technology">Technology</option>
                </select>
            </li>
            <li>
              <h3>Give your project a title:</h3>
              <input className="form-input-field" type="text" placeholder="Title" onChange={this.handleInput('title')} ></input>
            </li>
            <li>
              <h3>How much do you hope to raise:</h3>
              $<input className="form-input-field" type="number" placeholder="10000" onChange={this.handleInput('goal')} ></input>
            </li>
            <li>
              <h3>Choose an image:</h3>
              <p>This is the first thing people will see when they visit your page</p>
              <div className="upload-image-div">
              <ProjectFormImage setImageUrl={this.setImageUrl('main_image_url')} />
              <img className="project-image-chosen" src={this.state.main_image_url}></img>
              </div>
            </li>
            <li>
              <h3>Describe your project:</h3>
              <textarea className="form-input-field" placeholder="..." onChange={this.handleInput('description')} />
            </li>
            <li>
              <h3>Add an image for your description:</h3>
              <div className="upload-image-div">
              <ProjectFormImage setImageUrl={this.setImageUrl('extra_image_url')} />
              <img className="project-image-chosen" src={this.state.extra_image_url}></img>
              </div>
            </li>
          </ol>
          <button className="project-submit-button" onClick={this.handleSubmit}>Create Project</button>
          <br />
          {this.renderErrors()}
        </form>
      </div>
    )
  }
}

export default ProjectForm;

// On Line 92 where RewardContainer (used to be) is being rendered. You must always render the container, never the JSX file!!!
// The JSX file is included automatically in the container!!

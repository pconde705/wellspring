import React from 'react';
import ProjectFormImage from './project_form_image';
// import Select from 'react-select'; Secondary dropdown option

class ProjectForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {title: "", category: "art", description: "", goal: 0, main_image_url: "", extra_image_url: ""}
    this.handleSubmit = this.handleSubmit.bind(this)
    this.setImageUrl = this.setImageUrl.bind(this)
    this.setExtraImageUrl = this.setExtraImageUrl.bind(this)
  }

  handleInput(type) {
    return (e) => {
      this.setState({ [type]: e.target.value })
    }
  }

  setImageUrl(imgType) {
    return (url) => {
      this.setState({ [imgType]: url }) // square brackets trigger an evaluation, not some array declaration
    }
  }

  setExtraImageUrl(url) {
    this.setState({ extra_image_url: url })
  }

  handleSubmit(e) {
    e.preventDefault();
    const project = Object.assign({}, this.state)
    this.props.createProject(project).then( () =>
      this.props.history.push('/')
    );
  }


  render() {
    console.log(this.state);
    return (
      <div className="project-create-div">
        <img className="background-form-image" src="https://res.cloudinary.com/lopopoa2/image/upload/v1511547135/pexels-photo-209678_uxitpp.jpg" ></img>
        <form className="project-create-form">
          <h1 className="project-form-header">Get Started</h1>
          <ol>
            <li>
              <h3>Choose a category:</h3>
              <select className="project-dropdown" value={this.state.category} onChange={this.handleInput('category')}>
                <option value="art">Art</option>
                <option value="comics">Comics</option>
                <option value="crafts">Crafts</option>
                <option value="dance">Dance</option>
                <option value="design">Comics</option>
                <option value="fashion">Fashion</option>
                <option value="film">Film & Video</option>
                <option value="food">Food</option>
                <option value="games">Games</option>
                <option value="journalism">Journalism</option>
                <option value="music">Music</option>
                <option value="photography">Photography</option>
                <option value="publishing">Publishing</option>
                <option value="technology">Technology</option>
                <option value="theater">Theater</option>
              </select>
            </li>
            <li>
              <h3>Give your project a title:</h3>
              <input type="text" placeholder="Title" onChange={this.handleInput('title')} ></input>
            </li>
            <li>
              <h3>Describe your project:</h3>
              <input type="text" placeholder="Description" onChange={this.handleInput('description')} ></input>
            </li>
            <li>
              <h3>How much do you hope to raise:</h3>
              <input type="text" placeholder="Goal" onChange={this.handleInput('goal')} ></input>
            </li>
            <li>
              <ProjectFormImage setImageUrl={this.setImageUrl('main_image_url')} /> // these will come down as props
            </li>
            <li>
              <ProjectFormImage setImageUrl={this.setImageUrl('extra_image_url')} /> // these will come down as props
            </li>
          </ol>
          <button onClick={this.handleSubmit}>Create Project</button>
        </form>
      </div>
    )
  }
}

export default ProjectForm;

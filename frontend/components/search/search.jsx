import React from 'react'

class Search extends React.Component {
  constructor(props) {
   super(props);

   this.state = {searchValue: ""};
   this.handleInput = this.handleInput.bind(this);
 }

 handleInput(e) {
   e.preventDefault();
   this.setState({searchValue: e.target.value})
   const query = Object.assign({}, this.state)
   this.props.searchDatabase(query);
 }

  render () {
    return (
      <li>
      <input value={this.state.searchValue} type="text" placeholder="Search for a project"
        onChange={this.handleInput}>

      </input>
      <i className="fa fa-search" aria-hidden="true"></i>
      </li>
    )
  }

}
export default Search;

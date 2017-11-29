import React from 'react';
import SearchResults from './search_results';

class Search extends React.Component {
  constructor(props) {
   super(props);

   this.state = {searchValue: ""};
   this.handleInput = this.handleInput.bind(this);
   this.resetSearch = this.resetSearch.bind(this);
 }

 handleInput(e) {
   e.preventDefault();
   this.setState({searchValue: e.target.value})
   const query = Object.assign({}, this.state)
   this.props.searchDatabase(query);
 }

 resetSearch () {
   this.setState({searchValue: ""});
 }

  render () {
    // console.log(this.props);
    return (
      <li>
      <input className="search-input" value={this.state.searchValue} type="text" placeholder="Search for a project"
        onChange={this.handleInput}>
      </input>
      <i className="fa fa-search" aria-hidden="true"></i>
      <SearchResults value={this.state.searchValue} reset={this.resetSearch} results={this.props.searchResults}/>
      </li>
    )
  }

}
export default Search;

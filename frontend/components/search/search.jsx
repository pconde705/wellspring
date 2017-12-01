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
   setTimeout( () => {
     this.props.clearSearchResults();
   }, 400);
 }

  render () {
    return (
      <div>
        <input className="search-input" value={this.state.searchValue} type="text" placeholder="Search for a project"
          onChange={this.handleInput} onBlur={this.resetSearch}>
        </input>
        <i className="fa fa-search" aria-hidden="true"></i>
        <SearchResults value={this.state.searchValue} results={this.props.searchResults}/>
      </div>
    )
  }

}
export default Search;

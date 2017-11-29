import React from 'react';
import {Link} from 'react-router-dom';

class SearchResults extends React.Component {
  render () {
    console.log(this.props);
    return (
      <ul>
        {this.props.results.map((result) => (
        <Link to=""><li>
            {result.title}
        </li></Link>
      ))}
      </ul>
    )
  }
}

export default SearchResults;

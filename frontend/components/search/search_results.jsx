import React from 'react';
import {Link} from 'react-router-dom';

class SearchResults extends React.Component {

  componentWillMount() {
    this.props.reset()
  }

  render () {
    console.log(this.props);
    return (
      <div className="search-results-div">
        <ul>
          {this.props.results.map((result, key) => (
            <Link key={key} to={`/projects/${result.id}`}><li>
              {result.title}
            </li></Link>
          ))}
        </ul>
      </div>
    )
  }
}

export default SearchResults;


// In your action (if you look in the console) you'll notice each searchResult will show
// id, title, category, description, this is because I specified it so in the index.json.jbuilder

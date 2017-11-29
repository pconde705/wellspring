import {connect} from 'react-redux';
import Search from './search';
import {searchDatabase, clearSearchResults} from '../../actions/search_actions';
import {selectAllProjects} from '../../reducers/selectors';
import {searchResults} from '../../reducers/selectors';

const mapStateToProps = (state) => {
  // debugger;
  return {
  currentUser: state.session.currentUser,
  searchResults: searchResults(state),
  projects: selectAllProjects(state)
};};

const mapDispatchToProps = (dispatch) => ({
  searchDatabase: (query) => dispatch(searchDatabase(query)),
  clearSearchResults: () => dispatch(clearSearchResults())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Search);

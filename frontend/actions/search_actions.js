import {searchTitles} from '../util/search_api_util';

export const RECEIVE_SEARCH_RESULTS = "RECEIVE_SEARCH_RESULTS";



const receiveSearchResults = (searchResults) => ({
  type: RECEIVE_SEARCH_RESULTS,
  searchResults
});


export const searchDatabase = (query) => (dispatch) => (
  searchTitles(query).then(
    (results) => dispatch(receiveSearchResults(results))
  )
);

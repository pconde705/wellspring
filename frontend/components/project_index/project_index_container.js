import {connect} from 'react-redux';
import ProjectIndex from './project_index';
import {fetchAllProjects} from '../../actions/project_actions';

import {selectAllProjects} from '../../reducers/selectors';

const mapStateToProps = (state, ownProps) => {
  return {
    projects: selectAllProjects(state)
    // React cannot render blank object, this is a blank object by default
    // we would use selectors to turn this hash into an array
};};

const mapDispatchToProps = (dispatch) => ({
  fetchAllProjects: () => dispatch(fetchAllProjects())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectIndex);

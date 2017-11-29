import {connect} from 'react-redux';
import ProjectShow from './project_show';
import {fetchSingleProject} from '../../actions/project_actions';
import {editProjectBackers} from '../../actions/backer_actions';

const mapStateToProps = (state, ownProps) => {
  // console.log(state);
  // console.log(ownProps);
  return {
    project: state.projects[ownProps.match.params.id],
    currentUser: state.session.currentUser,
}};
//  Ask about undefined, and why it needs to load twice before getting the data

const mapDispatchToProps = dispatch => ({
  fetchSingleProject: (id) => dispatch(fetchSingleProject(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectShow);

//ownProps gives us access to match history and params, and any props that are passed down into this component

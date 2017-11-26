import {connect} from 'react-redux';
import ProjectShow from './project_show';
import {fetchSingleProject} from '../../actions/project_actions';

const mapStateToProps = state => {
  // console.log(state);
  return {
    project: state.projects,
    currentUser: state.session.currentUser
}};
//  Ask about undefined, and why it needs to load twice before getting the data

const mapDispatchToProps = dispatch => ({
  fetchSingleProject: (id) => dispatch(fetchSingleProject(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectShow);

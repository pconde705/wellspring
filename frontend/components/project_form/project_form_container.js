import {connect} from 'react-redux';
import ProjectForm from './project_form';
import {createProject, editProject, clearErrors} from '../../actions/project_actions';

const mapStateToProps = state => {
  return {
  errors: state.errors.project
};};
// For create we don't have to pass in anything to props

const mapDispatchToProps = dispatch => ({
  createProject: (project) => dispatch(createProject(project)),
  clearErrors: () => dispatch(clearErrors())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectForm);

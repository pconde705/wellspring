import {connect} from 'react-redux';
import ProjectForm from './project_form';
import {createProject, editProject} from '../../actions/project_actions';

const mapStateToProps = state => ({

});
// For create we don't have to pass in anything to props

const mapDispatchToProps = dispatch => ({
  createProject: (project) => dispatch(createProject(project))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectForm);

import {connect} from 'react-redux';
import SessionForm from './session_form';


const mapStateToProps = (state, ownProps) => ({
  loggedIn: Boolean(state.sessionReducer.currentUser),
  errors: state.errors.sessionReducer,
  formType: ownProps.location.pathname.slice(1)
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: () => dispatch(processForm())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm)

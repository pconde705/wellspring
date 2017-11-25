import React from 'React';
import {Image, CloudinaryContext, Transformation} from 'cloudinary-react';

class ProjectFormImage extends React.Component {

  uploadWidget(e){
    e.preventDefault();
    cloudinary.openUploadWidget(
      window.cloudinary_options, (error, images) => {
          if (error === null) {
            console.log(images[0].secure_url);
            this.props.setImageUrl(images[0].secure_url) // comes from the ProjectForm
          }
      });
  }

  render() {
    return (
      <div className="upload-image-div">
        <button
          onClick={this.uploadWidget.bind(this)}
          className="project-image-button">
          Add Image
        </button>
      </div>
    )
  }

}

export default ProjectFormImage;

import React from 'react';
import {Image, CloudinaryContext, Transformation} from 'cloudinary-react';

class ProjectFormImage extends React.Component {

  uploadWidget(e){
    e.preventDefault();
    cloudinary.openUploadWidget(
      window.cloudinary_options, (error, images) => {
          if (error === null) {
            this.props.setImageUrl(images[0].secure_url) // comes from the ProjectForm
          }
      });
  }

  render() {
    return (
        <button
          onClick={this.uploadWidget.bind(this)}
          className="project-image-button">
          Add Image
        </button>
    )
  }

}

export default ProjectFormImage;

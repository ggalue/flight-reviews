import React from 'react'

const ReviewForm = (props) => {
	return (
		<div className="wrapper">
			<form onSubmit={props.handleSubmit}>
				<div>Have an experience with {props.attributes.name}? Share your review!</div>
				<div className="field">
					<input onChange={props.handleChange} type="text" value={props.review.title} name="title" placeholder="Reivew Title"/>
				</div>
				<div className="field">
					<input onChange={props.handleChange} type="text" value={props.review.description} name="description" placeholder="Reivew Description"/>
				</div>
				<div className="field">
					<div className="rating-container">
						<div className="rating-title-text">Rate this airline</div>
						[Star rating goes here]
					</div>
				</div>
				<button type="submit">Submit your review</button>
			</form>
		</div>
	)
}

export default ReviewForm

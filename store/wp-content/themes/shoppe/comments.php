<?php
/**
 * The template for displaying comments
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package wp_meliora
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>

<div id="comments" class="c-comments comments-area">

	<?php
	if ( comments_open() ) :
		comment_form( array(
			'label_submit'  => __('Post Comment', 'shoppe'),
			'title_reply'   => __('Leave a reply', 'shoppe'),
			'comment_field' => '<p class="comment-form-comment"><label class="screen-reader-text" for="comment">Comment *</label> <textarea id="comment" placeholder="Comment *" name="comment" cols="45" rows="3" maxlength="20000" required="required" spellcheck="false"></textarea></p>'
		) );
		?>


		<?php if ( have_comments() ) : ?>
        <h2 class="comments-title">
			<?php
			esc_html_e( 'Comments', 'shoppe' )
			?>
        </h2><!-- .comments-title -->

        <ol class="comment-list">
			<?php
			wp_list_comments(
				array(
					'walker'      => new Shoppe_walker_comment(),
					'style'       => 'ol',
					'short_ping'  => true,
					'avatar_size' => 70,
				)
			);
			?>
        </ol><!-- .comment-list -->
		<?php the_comments_navigation(); ?>
	<?php endif; ?>
		<?php
		the_comments_navigation();

	endif; // Check for have_comments().
	?>

</div><!-- #comments -->

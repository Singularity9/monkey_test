require 'test_helper'

class FilmsControllerTest < ActionController::TestCase
  setup do
    @film = films(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film" do
    assert_difference('Film.count') do
      post :create, film: { amazon_stream_link: @film.amazon_stream_link, disc_link: @film.disc_link, film_summary: @film.film_summary, film_year: @film.film_year, is_released_amazon_stream: @film.is_released_amazon_stream, is_released_disc: @film.is_released_disc, is_released_netflix: @film.is_released_netflix, netlifx_link: @film.netlifx_link, title: @film.title, user_id: @film.user_id }
    end

    assert_redirected_to film_path(assigns(:film))
  end

  test "should show film" do
    get :show, id: @film
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film
    assert_response :success
  end

  test "should update film" do
    patch :update, id: @film, film: { amazon_stream_link: @film.amazon_stream_link, disc_link: @film.disc_link, film_summary: @film.film_summary, film_year: @film.film_year, is_released_amazon_stream: @film.is_released_amazon_stream, is_released_disc: @film.is_released_disc, is_released_netflix: @film.is_released_netflix, netlifx_link: @film.netlifx_link, title: @film.title, user_id: @film.user_id }
    assert_redirected_to film_path(assigns(:film))
  end

  test "should destroy film" do
    assert_difference('Film.count', -1) do
      delete :destroy, id: @film
    end

    assert_redirected_to films_path
  end
end

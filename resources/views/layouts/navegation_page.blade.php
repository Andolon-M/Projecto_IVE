<nav id="navbar" class="fixed nav-bg-scroll rounded-b-lg top-0 z-50 w-full bg-green-500 dark:bg-gray-800 dark:border-gray-700 mb-auto">
  <div class="px-3 py-1  lg:px-5">
    <div class="flex items-center justify-between">
      <div class="flex items-center justify-start">

        <a id="name_ive" href="/" class="flex ml-2 hidden">

          <ul class="w-16 h-16 dark:bg-white  rounded-full">
            <img id="logo-image" src="{{ asset('images/Logo Oficial blanco curvas.svg') }}" alt="IVE_logo" class="h-16 mr-3" style="margin-inline-end: 10px" />
          </ul>

          <span id="tex_navbar" class="self-center text-white text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-white mr-1 hidden sm:block">Iglesia</span>
          <span id="tex_navbar2" class="self-center text-white text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-white hidden sm:block">Vida y Esperanza A.D</span>
        </a>
      </div>
      @if (Route::has('login'))
      @auth
      <div class="flex items-center ">
        <div class="flex items-center ml-3">
          <div>
            <button type="button" class="flex text-sm hover:bg-green-800 dark:hover:bg-green-900 rounded-full focus:ring-4 focus:ring-green-700 dark:focus:ring-green-900 " aria-expanded="false" data-dropdown-toggle="dropdown-user">
              <p id="tex_navbar3" class="text-sm text-white m-2 align-middle hidden sm:block " role="none"><strong>{{ Auth::user()->name }}</strong></p>
              <span class="sr-only">Open user menu</span>
              @if(Auth::user()->image === null)
                            <svg class="w-8 h-8 text-green-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M10 0a10 10 0 1 0 10 10A10.011 10.011 0 0 0 10 0Zm0 5a3 3 0 1 1 0 6 3 3 0 0 1 0-6Zm0 13a8.949 8.949 0 0 1-4.951-1.488A3.987 3.987 0 0 1 9 13h2a3.987 3.987 0 0 1 3.951 3.512A8.949 8.949 0 0 1 10 18Z" />
                            </svg>
                            @else
                            <img class="w-8 h-8 rounded-full align-middle" src="{{ Auth::user()->image }}" alt="user photo">
                            @endif
            </button>
          </div>

          <div class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded shadow dark:bg-gray-700 dark:divide-gray-600" id="dropdown-user">
            <div class="px-4 py-3" role="none">

              <p class="text-sm text-green-900 dark:text-white" role="none">{{ Auth::user()->name }} {{ Auth::user()->last_name }}</p>

              <p class="text-sm font-medium text-gray-900 truncate dark:text-gray-300" role="none">
                {{ Auth::user()->email }}
              </p>
            </div>
            <ul class="py-1" role="none">
              <li>
                <a href="{{route('profile.edit')}}" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:text-gray-300 dark:hover:bg-gray-600 dark:hover:text-white" role="menuitem">Perfil</a>
                <a href="{{route('dashboard.descubrir')}}" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:text-gray-300 dark:hover:bg-gray-600 dark:hover:text-white" role="menuitem">Dashboard</a>
              </li>
              <li>
                <form method="POST" action="{{ route('logout') }}">
                  @csrf
                  <x-dropdown-link :href="route('logout')" onclick="event.preventDefault();
                                                this.closest('form').submit();">
                    {{ __('Cerrar Sesión') }}
                  </x-dropdown-link>
                </form>
              </li>
            </ul>
          </div>
        </div>
      </div>
      @else
      <!-- Este botón se muestra solo cuando el usuario no está autenticado -->
      <a id="tex_navbar3" href="{{ route('login') }}" type="button" class="py-1 px-4 flex text-sm hover:bg-green-800 dark:hover:bg-green-900 rounded-full focus:ring-4 focus:ring-green-700 dark:focus:ring-green-900 text-white ">Iniciar Sesión</a>
      @endauth
      @endif
    </div>
  </div>
</nav>
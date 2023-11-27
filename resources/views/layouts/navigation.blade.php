<nav class="fixed top-0 z-50 w-full bg-white border-b border-gray-200 dark:bg-gray-800 dark:border-gray-700 mb-auto">
   <div class="px-3 py-1 lg:px-5 lg:pl-3">
      <div class="flex items-center justify-between">
         <div class="flex items-center justify-start">
            <button data-drawer-target="logo-sidebar" data-drawer-toggle="logo-sidebar" aria-controls="logo-sidebar" type="button" class="inline-flex items-center p-2 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600">
               <span class="sr-only">Open sidebar</span>
               <svg class="w-6 h-6 text-green-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                  <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15" />
               </svg>
            </button>
            <a href="/" class="flex ml-2 md:mr-24">
               <x-application-logo class="h-8 mr-3" style="margin-inline-end: 10px" alt="IVE_logo" />
               <span class="self-center text-green-700 text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-white mr-1 hidden sm:block">Iglesia</span>
               <span class="self-center text-gray-800 text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-white hidden sm:block">Vida y Esperanza A.D</span>
            </a>
         </div>
         @if (Route::has('login'))
         @auth
         <div class="flex items-center ">
            <div class="flex items-center ml-3">
               <div>
                  <button type="button" class="flex text-sm hover:bg-green-200 dark:hover:bg-green-900 rounded-full focus:ring-4 focus:ring-green-300 dark:focus:ring-green-600 " aria-expanded="false" data-dropdown-toggle="dropdown-user">
                     <p class="text-sm text-green-900 dark:text-white m-2 align-middle hidden sm:block " role="none"><strong>{{ Auth::user()->name }}</strong></p>
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

                     <p class="text-sm text-gray-900 dark:text-white" role="none">{{ Auth::user()->name }} {{ Auth::user()->last_name }}</p>

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
                              {{ __('Log Out') }}
                           </x-dropdown-link>
                        </form>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
         @else
         <!-- Este botón se muestra solo cuando el usuario no está autenticado -->
         <a href="{{ route('login') }}" type="button" class="mx-1 p-1 flex text-sm hover:bg-green-200 dark:hover:bg-green-900 rounded-full focus:ring-4 focus:ring-green-300 dark:focus:ring-green-600 text-green-900 dark:text-neutral-50">Iniciar Sesión</a>
         @endauth
         @endif
      </div>
   </div>
</nav>